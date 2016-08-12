package com.mmt.exceptions;

@SuppressWarnings("serial")
public class EndpointNotExistsException extends Throwable {
	public EndpointNotExistsException() {
		super();
	}

	public EndpointNotExistsException(String message, Throwable cause) {
		super(message, cause);
	}

	public EndpointNotExistsException(String message) {
		super(message);
	}

	public EndpointNotExistsException(Throwable cause) {
		super(cause);
	}

}
